class Lang {
  String nointernet_title = 'Peringatan';
  String nointernet =
      'Koneksi ke staging timeout, periksa koneksi anda (WIFI / Paket Data)';
  // 'Koneksi ke staging timeout, periksa koneksi anda (WIFI / Paket Data) (${NetworkConnection().statusError()})';

  String title_unknown = "Peringatan";
  String message_unknown = "Pesan kesalahan tidak di kenali";

  String title_emptyform = "Peringatan";
  String message_emptyform = "Mohon lengkapi dulu form isian anda";

  String title_emptylokasi = "Peringatan";
  String message_emptylokasi = "Lokasi awal atau tujuan harus di isi";

  String title_maxtrip = "Peringatan";
  String message_maxtrip =
      "Odometer anda melebihi batas, silahkan perbaiki odometer anda terlebih dahulu";

  String title_simpan = "Peringatan";
  String message_simpan = "Anda yakin ingin menyimpan formulir\n ini ?";

  String title_proses = "Peringatan";
  String message_proses = "Anda yakin ingin memproses permintaan ini ?";

  String title_simpantbs = "Peringatan";
  String message_simpantbs = "Anda yakin ingin menyimpan data TBS ini ?";

  String title_nogps = "Peringatan";
  String message_nogps = "GPS masih mencari titik lokasi koordinat anda";

  String title_noactivegps = "Peringatan";
  String message_noactivegps =
      "GPS tidak aktif, silahkan aktifkan terlebih dahulu GPS anda, kemudian coba lagi";

  String title_uncheck = "Peringatan";
  String message_uncheck = "Anda belum checklist pernyataan";

  String title_timeout = "Peringatan";
  String message_timeout = "Koneksi timeout, silahkan di coba kembali";

  String title_success = "Berhasil";
  String message_success = "Data berhasil di simpan";

  String title_awan = "Berhasil";
  String message_awan = "Data sukses terkirim ke awan / staging";

  String title_sinkron = "Berhasil";
  String message_sinkron = "Data berhasil di sinkron";

  String title_del_success = "Berhasil";
  String message_del_success = "Data sudah di hapus";

  String title_del_error = "Peringatan";
  String message_del_error = "Data tidak dapat di hapus";

  String title_blacklist = "Peringatan";
  String message_blacklist = "Anda masuk daftar hitam";

  String title_pilihlokasi = "Peringatan";
  String message_pilihlokasi =
      "Divisi yang anda pilih tidak sesuai dengan divisi yg sudah terekam sebelumnya";

  String title_sinkronfail = "Peringatan";
  String message_sinkronfail =
      "Sinkron tidak berhasil, periksa koneksi anda (WIFI / Paket Data) dan silahkan sinkron kembali";

  String title_norole = "Peringatan";
  String message_norole = "Peran akun Anda tidak dikenali";

  String title_emptydata = "Peringatan";
  String message_emptydata = "Harap isi username dan password anda";

  String title_emptytbs = "Peringatan";
  String message_emptytbs = "Data tbs kosong";

  String title_tripinput = "Peringatan";
  String message_tripinput = "Mohon periksa kembali pembacaan akhir odometer";

  String title_notruck = "Peringatan";
  String message_notruck = "Supir tidak terkait dengan truck yg anda scan";

  String title_truckempty = "Peringatan";
  String message_truckempty = "Data truck atau user login anda tidak lengkap";

  String title_nodatatruck = "Peringatan";
  String message_nodatatruck =
      "Data truk tidak tersedia, silahkan sinkron ulang untuk mendapatkan data truk";

  String title_duplicatetbs = "Peringatan";
  String message_duplicatetbs = "Data TBS ini sudah anda input sebelumnya";

  String title_duplicatekenek = "Peringatan";
  String message_duplicatekenek =
      "Duplikasi data kernet, silahkan perhatikan data kernet";

  String title_deletetrip = "Peringatan";
  String message_deletetrip = "Anda yakin ingin menghapus data Trip ini ?";

  String title_updatetrip = "Peringatan";
  String message_updatetrip = "Anda yakin ingin memperbaharui data Trip ini ?";

  String title_deletetbs = "Peringatan";
  String message_deletetbs = "Anda yakin ingin menghapus data tbs ini ?";

  String title_emptysupir = "Peringatan";
  String message_emptysupir =
      "Data supir tidak valid, mohon sinkron data master operator / helper anda";

  String title_emptytimbang = "Peringatan";
  String message_emptytimbang =
      "Data timbang atau berat materi tidak boleh kosong";

  String title_notimbang = "Peringatan";
  String message_notimbang =
      "Data timbangan tidak lengkap, silahkan ke timbangan terlebih dahulu";

  String title_emptyblock = "Peringatan";
  String message_emptyblock =
      "Data divisi / blok tidak valid, periksa pilihan divisi / block anda";

  String title_login = "Peringatan";
  String message_login =
      "Server offline / tidak merespon dan login offline tidak tersedia";

  String title_emptydriver = "Peringatan";
  String message_emptydriver =
      "Data supir belum lengkap, silahkan sinkronisasi ulang data operator helper";

  String title_pilihtrip = "Peringatan";
  String message_pilihtrip =
      "Pilih data trip dulu sebelum melanjutkan menu ini";

  String title_emptyjanjang = "Peringatan";
  String message_emptyjanjang =
      "Data janjang, estimasi berat dan foto tidak boleh kosong sebelum di simpan";

  String title_trippindah = "Berhasil";
  String message_trippindah = "Sinkron trip pindahan berhasil";

  String tuanganTruckAlert =
      "Truk anda tidak sesuai dengan truk yang diarahkan oleh Tuangan, silahkan hubungi Pekerja Tuangan";

  String pindahMuatanTruckAlert =
      "Truk anda tidak sesuai dengan truk yang diarahkan oleh truck asal, silahkan hubungi supir dari truck asal";

  String version = "Ver 0.3.2 (DEV)";
  // String version = "Ver 0.3.2 (QA)";
  // String version = "Ver 0.3.2";
}
