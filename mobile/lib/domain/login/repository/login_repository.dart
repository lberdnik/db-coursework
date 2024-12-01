abstract class LoginRepository {
  Future<String> login(String email, String password);
  Future<void> register(
    String email,
    String username,
    String lastName,
    String firstName,
  );
}
