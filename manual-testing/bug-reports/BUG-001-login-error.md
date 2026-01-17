# BUG-001 – No error message for invalid login

**Summary:**  
No error message is displayed when logging in with a valid email and an invalid password.

**Environment:**  
- Browser: Chrome  
- OS: macOS  

**Priority:** High  

**Preconditions:**  
- User account exists: `testuser@example.com`

**Steps to reproduce:**  
1. Open the login page  
2. Enter email: `testuser@example.com`  
3. Enter invalid password: `WrongPassword`  
4. Click **Login**

**Expected result:**  
- Error message is displayed (e.g. *"Invalid email or password"*)  
- User remains on the login page  
- User is clearly informed that authentication failed

**Actual result:**  
- User remains on the login page  
- No error message is displayed  
- No indication of a failed login attempt
