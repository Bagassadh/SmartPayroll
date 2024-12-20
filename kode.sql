<?php
include 'FungsiDataPegawai.php';

$Fungsi =  new FungsiDataPegawai();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nik = $_POST['nik'];
    $npwp = $_POST['npwp'];
    $nama = $_POST['nama'];
    $active = $_POST['active'];
    $jabatan = $_POST['jabatan'];
    $bagian = $_POST['bagian'];
    $jenispegawai = $_POST['jenispegawai'];
    $bank = $_POST['bank'];
    $norek = $_POST['norek'];
    $status = $_POST['status'];
    $masuk = $_POST['masuk'];
    $keluar = $_POST['keluar'];
    $keterangan = $_POST['keterangan'];

    if ($Fungsi -> tambahData($nik, $npwp, $nama, $active, $jabatan, $bagian, $jenispegawai, $bank, $norek, $status, $masuk, $keluar, $keterangan)) {
        header("Location: Data_Pegawai_Admin.php");
    }
}



CREATE TABLE gaji_karyawan (
    no INT AUTO_INCREMENT PRIMARY KEY,
    nik VARCHAR(20) NOT NULL,
    npwp VARCHAR(20) NOT NULL,
    nama VARCHAR(100) NOT NULL,
    status_pegawai ENUM('Active', 'Non Active') NOT NULL,
    jabatan VARCHAR(100) NOT NULL,
    bagian VARCHAR(100) NOT NULL,
    jenis_pegawai ENUM('Tetap', 'Kontrak') NOT NULL,
    bank VARCHAR(50) NOT NULL,
    no_rek VARCHAR(30) NOT NULL,
    status ENUM('TK/0', 'K/0') NOT NULL,
    in_date DATE NOT NULL,
    out_date DATE,
    keterangan TEXT,
    gaji DECIMAL(15,2) NOT NULL,
    lembur DECIMAL(15,2) NOT NULL,
    lembur_per_jam DECIMAL(15,2),
    tunjangan_1 DECIMAL(15,2) NOT NULL,
    tunjangan_2 DECIMAL(15,2) NOT NULL,
    natura DECIMAL(15,2),
    bonus_japro_thr DECIMAL(15,2),
    tunjangan_pph DECIMAL(15,2),
    jkk_perusahaan DECIMAL(15,2),
    jkm_perusahaan DECIMAL(15,2),
    jht_perusahaan DECIMAL(15,2),
    iuran_pensiun_perusahaan DECIMAL(15,2),
    jpk_perusahaan DECIMAL(15,2),
    tunjangan_zakat DECIMAL(15,2),
    jht_karyawan DECIMAL(15,2),
    iuran_pensiun_karyawan DECIMAL(15,2),
    jpk_karyawan DECIMAL(15,2),
    zakat_karyawan DECIMAL(15,2),
    bruto DECIMAL(15,2),
    gol VARCHAR(10),
    ter DECIMAL(15,2),
    pph_terhutang DECIMAL(15,2),
    pph_pasal_21 DECIMAL(15,2),
    bpjs_ketenagakerjaan DECIMAL(15,2),
    bpjs_kesehatan DECIMAL(15,2),
    iuran_koperasi DECIMAL(15,2),
    kasbon DECIMAL(15,2),
    iuran_serikat DECIMAL(15,2),
    hutang_bank DECIMAL(15,2),
    hutang_pihak_ke3 DECIMAL(15,2),
    zakat DECIMAL(15,2)
);

 <button type="submit">Simpan</button>
                      <a href="Data_Gaji_Karyawan.php" class="btn-kembali">Kembali</a>


<thead>
    <tr>
        <th>No</th>
        <th>NIK</th>
        <th>NPWP</th>
        <th>Nama</th>
        <th>Status Pegawai</th>
        <th>Jabatan</th>
        <th>Bagian</th>
        <th>Jenis Pegawai</th>
        <th>Bank</th>
        <th>No Rekening</th>
        <th>Status</th>
        <th>In Date</th>
        <th>Out Date</th>
        <th>Keterangan</th>
        <th>Gaji</th>
        <th>Lembur</th>
        <th>Lembur per Jam</th>
        <th>Tunjangan 1</th>
        <th>Tunjangan 2</th>
        <th>Natura</th>
        <th>Bonus Japro THR</th>
        <th>Tunjangan PPH</th>
        <th>JKK Perusahaan</th>
        <th>JKM Perusahaan</th>
        <th>JHT Perusahaan</th>
        <th>Iuran Pensiun Perusahaan</th>
        <th>JPK Perusahaan</th>
        <th>Tunjangan Zakat</th>
        <th>JHT Karyawan</th>
        <th>Iuran Pensiun Karyawan</th>
        <th>JPK Karyawan</th>
        <th>Zakat Karyawan</th>
        <th>Bruto</th>
        <th>Gol</th>
        <th>Ter</th>
        <th>PPH Terhutang</th>
        <th>PPH Pasal 21</th>
        <th>BPJS Ketenagakerjaan</th>
        <th>BPJS Kesehatan</th>
        <th>Iuran Koperasi</th>
        <th>Kasbon</th>
        <th>Iuran Serikat</th>
        <th>Hutang Bank</th>
        <th>Hutang Pihak Ke-3</th>
        <th>Zakat</th>
    </tr>
</thead>
<tbody>
    <?php
    $no = 1;
    foreach ($result as $row):
    ?>
        <tr>
            <td><?php echo $no++; ?></td>
            <td><?php echo htmlspecialchars($row['nik']); ?></td>
            <td><?php echo htmlspecialchars($row['npwp']); ?></td>
            <td><?php echo htmlspecialchars($row['nama']); ?></td>
            <td><?php echo htmlspecialchars($row['status_pegawai']); ?></td>
            <td><?php echo htmlspecialchars($row['jabatan']); ?></td>
            <td><?php echo htmlspecialchars($row['bagian']); ?></td>
            <td><?php echo htmlspecialchars($row['jenis_pegawai']); ?></td>
            <td><?php echo htmlspecialchars($row['bank']); ?></td>
            <td><?php echo htmlspecialchars($row['no_rek']); ?></td>
            <td><?php echo htmlspecialchars($row['status']); ?></td>
            <td><?php echo htmlspecialchars($row['in_date']); ?></td>
            <td><?php echo htmlspecialchars($row['out_date']); ?></td>
            <td><?php echo htmlspecialchars($row['keterangan']); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['gaji'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['lembur'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['lembur_per_jam'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['tunjangan_1'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['tunjangan_2'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['natura'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['bonus_japro_thr'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['tunjangan_pph'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['jkk_perusahaan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['jkm_perusahaan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['jht_perusahaan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['iuran_pensiun_perusahaan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['jpk_perusahaan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['tunjangan_zakat'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['jht_karyawan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['iuran_pensiun_karyawan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['jpk_karyawan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['zakat_karyawan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['bruto'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars($row['gol']); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['ter'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['pph_terhutang'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['pph_pasal_21'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['bpjs_ketenagakerjaan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['bpjs_kesehatan'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['iuran_koperasi'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['kasbon'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['iuran_serikat'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['hutang_bank'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['hutang_pihak_ke3'], 2, ',', '.')); ?></td>
            <td><?php echo htmlspecialchars(number_format($row['zakat'], 2, ',', '.')); ?></td>
        </tr>
    <?php endforeach; ?>
</tbody>
