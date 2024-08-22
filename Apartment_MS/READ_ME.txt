1 - PostgreSQL'i kurun.

2 - PostgreSQL'i kurduktan sonra, Apartment_MS klasöründe bulunan backend klasöründeki "database.py" uzantılı dosyayı açın 
ve DB_HOST, DB_PORT, DB_USER, DB_PASSWORD belirdeğiniz şekilde ve DB_NAME'i de olmasını istediğiniz veritabanı ismi şeklinde yeniden düzenleyip kaydedin.

3 - Daha sonra Apartment_MS klasöründe bulunan "entrypoint.sh" dosyasını açın 
ve host ve port'u belirlediğiniz şekilde düzenleyin.

4 - "entrypoint.sh" dosyayı çalıştırın. Gerekli paketler kurulup veritabanı ve tablolar oluşacaktır.
Ardından flask app, run olacaktır ve sizi "http://localhost:3000/" sayfasına yani login ekranına yönlendirecektir.

5 - Login ekranında default olarak oluşturulan kullanıcı adı="admin" ve şifresi="21" yönetici hesabına giriş yapın.
