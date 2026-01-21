import { test, expect } from '@playwright/test';

test.describe('Navigation', () => {
  test('user can navigate to login page', async ({ page }) => {
    // Open homepage
    await page.goto('/');

    // Click Login link (stable selector)
    const loginLink = page.locator('a[href="/login"]');
    await expect(loginLink).toBeVisible();
    await loginLink.click();

    // Verify correct URL
    await expect(page).toHaveURL(/\/login$/);

    // Verify login page heading
    const heading = page.getByRole('heading', { name: /login page/i });
    await expect(heading).toBeVisible();
  });
});


