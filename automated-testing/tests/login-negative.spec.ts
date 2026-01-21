import { test, expect } from '@playwright/test';

test.describe('Login - negative scenarios', () => {
  test('invalid credentials show error message', async ({ page }) => {
    // Open login page
    await page.goto('/login');

    // Verify that login page loaded correctly 
       await expect(page).toHaveURL(/\/login$/);
       
    // Fill in invalid credentials
    await page.getByLabel('Username').fill('wrongUser');
    await page.getByLabel('Password').fill('wrongPassword');

    // Submit login form
    await page.getByRole('button', { name: /login/i }).click();

    // Verify error message
    const errorMessage = page.locator('#flash');
    await expect(errorMessage).toBeVisible();
    await expect(errorMessage).toContainText('Your username is invalid');
  });
});
