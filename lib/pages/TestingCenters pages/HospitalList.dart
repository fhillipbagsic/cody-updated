import 'package:cody/assets/styles.dart';
import 'package:cody/classes/Hospital.dart';
import 'package:cody/pages/TestingCenters%20pages/Hospital%20Information.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HospitalList extends StatelessWidget {
  final List<String> filter;
  HospitalList({this.filter});

  List<Hospital> hospitals = [
    Hospital(
        id: '1',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Muntinlupa City',
        name: 'Asian Hospital and Medical Center',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8771-9000',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/asian_hospital_and_medical_center.jpg',
        website: 'asianhospital.com'),
    Hospital(
        id: '2',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'City of Manila',
        name: 'Chinese General Hospital	',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8711-4141',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/chinese_general_hospital.jpg',
        website: 'cghmc.com.ph'),
    Hospital(
        id: '3',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Mandaluyong City',
        name: 'Detoxicare Molecular Diagnostics Laboratory',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8897-6994',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/detoxicare_mld.jpg',
        website: ''),
    Hospital(
        id: '4',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Caloocan City',
        name: 'Dr. Jose N. Rodriguez Memorial Hospital and Sanitarium (Tala)',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8294-2571',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/djnrmh.jpg',
        website: 'https://djnrmh.doh.gov.ph/'),
    Hospital(
        id: '5',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Caloocan City',
        name: 'Dr. Jose N. Rodriguez Memorial Hospital and Sanitarium (Tala)',
        ownership: 'Public',
        typeOfTesting: 'Cartridge',
        contactNumber: '(02) 8294-2571',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/djnrmh.jpg',
        website: 'https://djnrmh.doh.gov.ph/'),
    Hospital(
        id: '6',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Quezon City',
        name: 'Lung Center of the Philippines (LCP)',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8924-6101',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/lcp.jpg',
        website: 'lcp.gov.ph'),
    Hospital(
        id: '7',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Quezon City',
        name: 'Lung Center of the Philippines (GeneXpert)',
        ownership: 'Public',
        typeOfTesting: 'Cartridge',
        contactNumber: '(02) 8924-6101',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/lcp.jpg',
        website: 'lcp.gov.ph'),
    Hospital(
        id: '8',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Makati',
        name: 'Makati Medical Center',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8888-8999',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/mmc.jpeg',
        website: 'makatimed.net.ph'),
    Hospital(
        id: '9',
        region: 'Region 1',
        province: 'La Union',
        municipality: 'San Fernando',
        name: 'Ilocos Training and Regional Medical Center',
        ownership: 'Public',
        typeOfTesting: 'Cartridge',
        contactNumber: '(02) 8771-9000',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/itrmc.jpg',
        website: ''),
    Hospital(
      id: '10',
      region: 'Region 1',
      province: 'Pangasinan',
      municipality: 'Dagupan',
      name: 'Region 1 Medical Center',
      ownership: 'PUBLIC',
      typeOfTesting: 'Cartridge',
      contactNumber: '0915 906 3375',
      licenseValidity: '01/01/21 - 12/31/21',
      image: 'lib/images/hospitals/r1mc.jpg',
      website: 'r1mc.doh.gov.ph',
    ),
    Hospital(
      id: '11',
      region: 'Region 1',
      province: 'Ilocos Norte',
      municipality: 'Batac',
      name: 'Mariano Marcos Memorial Hospital Medical Center',
      ownership: 'PUBLIC',
      typeOfTesting: 'rRT PCR',
      contactNumber: '(077) 600 8000',
      licenseValidity: '01/01/21 - 12/31/21',
      image: 'lib/images/hospitals/mmmhmc.jpg',
      website: '',
    ),
    Hospital(
        id: '12',
        region: 'Region 2',
        province: 'Cagayan',
        municipality: 'Santiago City',
        name: 'Southern Isabela Medical Center',
        ownership: 'PUBLIC',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(078) 305 0459',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/simc.jpg',
        website: ''),
    Hospital(
        id: '13',
        region: 'Region 2',
        province: 'Cagayan',
        municipality: 'City of Ilagan, Isabela',
        name: 'San Antonio City of Ilagan Hospital',
        ownership: '',
        typeOfTesting: '',
        contactNumber: '0943 434 2741',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/sacih.jpg',
        website: ''),
    Hospital(
        id: '14',
        region: 'Region 3',
        province: 'Pampanga',
        municipality: 'San Fernando',
        name: 'Jose B. Lingad Memorial General Hospital',
        ownership: 'PUBLIC',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(045) 961 2444',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/jblmgh.jpg',
        website: 'https://doh.gov.ph/node/1590'),
    Hospital(
        id: '15',
        region: 'Region 3',
        province: 'Bataan',
        municipality: 'Balanga',
        name: 'Bataan General Hospital and Medical Center',
        ownership: 'PUBLIC',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(047) 237 3635',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/bghmc.jpg',
        website: 'https://bataangeneralhospital.doh.gov.ph/'),
    Hospital(
        id: '16',
        region: 'Region 3',
        province: 'Pampanga',
        municipality: 'San Fernando',
        name: 'Green City Medical Center',
        ownership: 'PRIVATE',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(045) 649 8702',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/gcmc.jpeg',
        website: 'greencitymedicalcenter.com'),
    Hospital(
      id: '17',
      region: 'Region 4A',
      province: 'Cavite',
      municipality: 'Imus',
      name: 'Ospital ng Imus',
      ownership: 'PUBLIC',
      typeOfTesting: 'rRT PCR',
      contactNumber: '',
      licenseValidity: '01/01/21 - 12/31/21',
      image: 'lib/images/hospitals/oni.jpg',
      website: 'https://www.facebook.com/ospitalngimus/',
    ),
    Hospital(
      id: '18',
      region: 'Region 4A',
      province: 'Batangas',
      municipality: 'Lipa City',
      name: 'Mary Mediatrix Medical Center',
      ownership: 'PRIVATE',
      typeOfTesting: 'rRT PCR',
      contactNumber: '(043) 773 6800',
      licenseValidity: '01/01/21 - 12/31/21',
      image: 'lib/images/hospitals/mmc.jpeg',
      website: 'https://mediatrixmedcenter.com.ph/',
    ),
    Hospital(
      id: '19',
      region: 'Region 4A',
      province: 'Laguna	',
      municipality: 'Sta. Rosa',
      name: 'Qualimed Hospital Sta. Rosa',
      ownership: 'PRIVATE',
      typeOfTesting: 'rRT PCR',
      contactNumber: '(049303) 0000',
      licenseValidity: '01/01/21 - 12/31/21',
      image: 'lib/images/hospitals/qhsr.jpg',
      website: 'qualimed.com.ph',
    ),
    Hospital(
      id: '20',
      region: 'Region 4B',
      province: 'Palawan',
      municipality: 'Puerto Princesa	',
      name: 'Ospital ng Palawan',
      ownership: 'PUBLIC',
      typeOfTesting: 'Cartridge ',
      contactNumber: '(048) 433 2621',
      licenseValidity: '01/01/21 - 12/31/21',
      image: 'lib/images/hospitals/onp.jpg',
      website: 'https://onp.doh.gov.ph/',
    ),
    Hospital(
      id: '21',
      region: 'Region 4B',
      province: 'Oriental Mindoro',
      municipality: 'Calapan',
      name: 'Oriental Mindoro Provincial Hospital	',
      ownership: 'PUBLIC',
      typeOfTesting: 'Cartridge',
      contactNumber: '(043) 288 5130',
      licenseValidity: '01/01/21 - 12/31/21',
      image: 'lib/images/hospitals/ormh.jpg',
      website: 'https://mimaropa.doh.gov.ph/oriental-provincial-doh-office/',
    ),
    Hospital(
        id: '22',
        region: 'Region 4B',
        province: 'Occidental Mindoro	',
        municipality: 'Mamburao',
        name: 'Occidental Mindoro Provincial Hospital',
        ownership: 'PUBLIC',
        typeOfTesting: 'Cartridge',
        contactNumber: '0907 933 0823',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/omph.jpg',
        website:
            'https://mimaropa.doh.gov.ph/occidental-mindoro-provincial-doh-office/'),
    Hospital(
        id: '23',
        region: 'Region 5',
        province: 'Albay',
        municipality: 'Legazpi City',
        name: 'Bicol Regional Diagnostic and Reference Laboratory	',
        ownership: 'PUBLIC',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(052) 732 5555',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/brdrl.jpg',
        website: 'https://brtth.doh.gov.ph/'),
    Hospital(
        id: '24',
        region: 'Region 5',
        province: 'Camarines Sur',
        municipality: 'Naga',
        name: 'Bicol Medical Center',
        ownership: 'PUBLIC',
        typeOfTesting: 'Cartridge',
        contactNumber: '(054) 472 6125',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/bmc.jpg',
        website: 'https://bmc.doh.gov.ph/'),
    Hospital(
        id: '25',
        region: 'Region 6',
        province: 'Iloilo',
        municipality: 'Iloilo City',
        name: 'Western Visayas Medical Center',
        ownership: 'PUBLIC',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8942 6843',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/bmc1.jpg',
        website: 'https://wvmc.doh.gov.ph/'),
    Hospital(
        id: '26',
        region: 'Region 6',
        province: 'Negros Occidental	',
        municipality: 'Bacolod City	',
        name: 'Corazon Locsin Montelibano Memorial Regional Hospital',
        ownership: 'PUBLIC',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(034) 703 1350',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/clmmrh.jpg',
        website: 'https://clmmrh.doh.gov.ph/'),
    Hospital(
        id: '27',
        region: 'Region 6',
        province: 'Negros Occidental	',
        municipality: 'Bacolod City	',
        name: 'The Doctors Hospital, Inc.',
        ownership: 'PRIVATE',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(034) 468 2100',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/tdhi.jpg',
        website: 'https://www.thedoctorshospital.com/'),

    Hospital(
        id: '29',
        region: 'Region 7',
        province: 'Cebu',
        municipality: 'Lapu Lapu City',
        name: 'Allegiant Regional Care Hospital	',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(032) 493 4248',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Allegiant_Regional_Care_Hospital.jpg',
        website: 'www.archospitals.org'),

    Hospital(
        id: '30',
        region: 'Region 7',
        province: 'Cebu',
        municipality: 'Cebu City',
        name: 'Vicente Sotto Memorial Medical Center (VSMMC)',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(032) 253 9891',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Vicente_Sotto_Memorial_Medical_Center.jpg',
        website: 'vsmmc.doh.gov.ph'),

    Hospital(
        id: '31',
        region: 'Region 7',
        province: 'Cebu',
        municipality: 'Mandaue City',
        name: 'University of Cebu Medical Center',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(032) 517 0888',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/University_of_Cebu_Medical_Center.jpg',
        website: 'ucmed.ph'),


    Hospital(
        id: '32',
        region: 'Region 8',
        province: 'Leyte',
        municipality: 'Tacloban City',
        name: 'Divine Word Hospital Viralogy Laboratory',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(044) 793 0034',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Divine_Word_Hospital_Viralogy_Laboratory.png',
        website: ''),

    Hospital(
        id: '33',
        region: 'Region 8',
        province: 'Leyte',
        municipality: 'Tacloban City',
        name: 'Eastern Visayas Regional Covid-19 Testing Center',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Eastern_Visayas_Regional_Covid-19_Testing_Center.jpg',
        website: 'ro8.doh.gov.ph'),

    Hospital(
        id: '34',
        region: 'Region 8',
        province: 'Leyte',
        municipality: 'Ormoc City',
        name: 'OSPA - Farmers\' Medical Center',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(053) 255 3194',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/OSPA_Farmers\'_Medical_Center.jpg',
        website: 'www.phap-ph.org'),

    Hospital(
        id: '35',
        region: 'Region 9',
        province: 'Zamboanga del Sur',
        municipality: 'Zamboanga City',
        name: 'Zamboanga City Medical Center',
        ownership: 'Public',
        typeOfTesting: 'Cartridge',
        contactNumber: '(062) 991 0573',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Zamboanga_City_Medical_Center.jpg',
        website: 'zcmc.doh.gov.ph'),

    Hospital(
        id: '36',
        region: 'Region 9',
        province: 'Zamboanga del Sur',
        municipality: 'Zamboanga City',
        name: 'Ciudad Medical Zamboanga',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(062) 992 7330',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Ciudad_Medical_Zamboanga.jpg',
        website: 'www.ciudadmedicalzamboanga.com.ph'),

    Hospital(
        id: '37',
        region: 'Region 9',
        province: 'Zamboanga del Sur',
        municipality: 'Pagadian City',
        name: 'Zamboanga Del Sur Medical Center PCR Laboratory',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(062) 991 0573',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Zamboanga_Del_Sur_Medical_Center_PCR_Laboratory.png',
        website: 'lcp.gov.ph'),

    Hospital(
        id: '38',
        region: 'Region 10',
        province: 'Misamis Oriental',
        municipality: 'Cagayan De Oro City	',
        name: 'Polymedic Medical Plaza, Inc.',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(088) 858 5242',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Polymedic_Medical_Plaza_Inc.jpg',
        website: 'www.phap-ph.org'),

    Hospital(
        id: '39',
        region: 'Region 10',
        province: 'Misamis Oriental',
        municipality: 'Cagayan De Oro City',
        name: 'Maria Reyna Xavier University Hospital',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(08822) 725210',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Maria_Reyna_Xavier_University_Hospital.jpg',
        website: 'www.mrxuh.com'),

    Hospital(
        id: '49',
        region: 'Region 10',
        province: 'Lanao Del Norte',
        municipality: 'Municipality of Kapatagan',
        name: 'Lanao Del Norte Covid-19 Testing Laboratory',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '',
        licenseValidity: '- 12/31/21',
        image: 'lib/images/hospitals/Lanao_Del_Norte_Covid-19_Testing_Laboratory.jpg',
        website: 'www.exteriores.gob.es'),

    Hospital(
        id: '41',
        region: 'Region 11',
        province: 'Davao Del Sur',
        municipality: 'Davao City',
        name: 'Southern Philippines Medical Center (SPMC)',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(082) 227 2731',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Southern_Philippines_Medical_Center.jpg',
        website: 'spmc.doh.gov.ph'),

    Hospital(
        id: '42',
        region: 'Region 11',
        province: 'Davao Del Norte',
        municipality: 'Tagum City',
        name: 'Davao Regional Medical Center',
        ownership: 'Private',
        typeOfTesting: 'Cartridge',
        contactNumber: '',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Davao_Regional_Medical_Center.jpg',
        website: 'drmc.doh.gov.ph'),

    Hospital(
        id: '43',
        region: 'Region 11',
        province: 'Davao Del Norte',
        municipality: 'Davao City',
        name: 'Davao Doctors Hospital',
        ownership: 'Private',
        typeOfTesting: 'Cartridge',
        contactNumber: '(082) 222 8000',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/davao-doctors-hospital-.jpg',
        website: 'www.ddh.com.ph'),

    Hospital(
        id: '44',
        region: 'Region 12',
        province: 'South Cotabato',
        municipality: 'Koronadal City',
        name: 'Dr. Arturo Pingoy Medical Center',
        ownership: 'Private',
        typeOfTesting: 'Cartridge',
        contactNumber: '(083) 228 2202',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Dr._Arturo_Pingoy_Medical_Center.jpg',
        website: ''),

    Hospital(
        id: '45',
        region: 'Region 12',
        province: 'South Cotabato',
        municipality: 'General Santos City',
        name: 'St. Elizabeth Hospital',
        ownership: 'Private',
        typeOfTesting: 'Cartridge',
        contactNumber: '+63 (83) 552-3162',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/St._Elizabeth_Hospital.jpg',
        website: 'sehi.ph'),

    Hospital(
        id: '46',
        region: 'Region 12',
        province: 'South Cotabato',
        municipality: 'General Santos City',
        name: 'Dr. Jorge P. Royeca Hospital',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(083) 552 4808',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Dr._Jorge_P._Royeca_Hospital.jpg',
        website: 'gensanhrmdo.org'),

    Hospital(
        id: '47',
        region: 'CARAGA',
        province: 'Surigao Del Norte',
        municipality: 'Butuan City',
        name: 'Butuan Medical Center',
        ownership: 'Public',
        typeOfTesting: 'Cartridge',
        contactNumber: '(085) 341 7490',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Butuan_Medical_Center.jpg',
        website: 'butuandoctors.com'),

        Hospital(
        id: '48',
        region: 'CARAGA',
        province: 'Surigao Del Norte',
        municipality: 'Butuan City',
        name: 'CARAGA Regional Hospital',
        ownership: 'Public',
        typeOfTesting: 'Cartridge',
        contactNumber: '(086) 826 2459',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/CARAGA_Regional_Hospital.jpg',
        website: 'crh.doh.gov.ph'),

    Hospital(
        id: '49',
        region: 'CARAGA',
        province: 'Agusan Del Sur',
        municipality: 'Mun. of Prosperidad',
        name: 'Democrito O. Plaza Memorial Hospital',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '0927 469 8162',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Democrito_O._Plaza_Memorial_Hospital.jpg',
        website: 'rh-care.info'),

    Hospital(
        id: '50',
        region: 'CAR',
        province: 'Benguet',
        municipality: 'Baguio City',
        name: 'Benguet General Hospital',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(074) 661 7910',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Baguio_General_Hospital_Medical_Center.jpg',
        website: 'bghmc.doh.gov.ph'),

    Hospital(
        id: '51',
        region: 'CAR',
        province: 'Benguet',
        municipality: 'La Trinidad',
        name: 'Luis Hora Memorial Regional Hospital',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '0939 903 8048',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Luis_Hora_Memorial_Regional_Hospital.jpg',
        website: 'luishora.doh.gov.ph'),

    Hospital(
        id: '52',
        region: 'CAR',
        province: 'Benguet',
        municipality: 'La Trinidad',
        name: 'Benguet General Hospital',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(074) 422 4724',
        licenseValidity: '- 12/31/21',
        image: 'lib/images/hospitals/Benguet_General_Hospital.jpg',
        website: 'benguet.gov.ph'),

    Hospital(
        id: '53',
        region: 'BARMM',
        province: 'Lanao Del Sur',
        municipality: 'Marawi City',
        name: 'Amai Pakpak Medical Center',
        ownership: 'Public',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(063) 876 0001',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Amai_Pakpak_Medical_Center.jpg',
        website: 'apmc.doh.gov.ph'),

    Hospital(
        id: '54',
        region: 'BARMM',
        province: 'Lanao Del Sur',
        municipality: 'Marawi City',
        name: 'Amai Pakpak Medical Center',
        ownership: 'Public',
        typeOfTesting: 'Cartridge',
        contactNumber: '(063) 876 0001',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/Amai_Pakpak_Medical_Center.jpg',
        website: 'apmc.doh.gov.ph'),

  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    print(filter);
    List<Hospital> applyFilter(List<Hospital> hospitals, List<String> filter) {
      List<Hospital> newHospitalList = [];

      newHospitalList.addAll(hospitals.where((element) =>
          filter[0] == 'All' ? true : element.region == filter[0]));

      newHospitalList.retainWhere((element) =>
          filter[1] == 'All' ? true : element.ownership == filter[1]);

      newHospitalList.retainWhere((element) =>
          filter[2] == 'All' ? true : element.typeOfTesting == filter[2]);

      return newHospitalList;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[600],
                              letterSpacing: 0.2),
                        ),
                        SizedBox(
                          height: 1.5,
                        ),
                        Text(
                          filter[0],
                          style: TextStyle(
                              fontSize: 17.0,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Hospitals',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                ),
              ),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: applyFilter(hospitals, filter)
                          .map((hospital) => card(
                                hospital: hospital,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class card extends StatelessWidget {
  final Hospital hospital;

  card({this.hospital});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HospitalInformation(
              hospitalInformation: hospital,
            ),
          ),
        );
      },
      child: Card(
        borderOnForeground: false,
        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 6.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        shadowColor: Colors.grey[100],
        elevation: 3.0,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(15.0),
              width: 80.0,
              height: 70.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: AssetImage(hospital.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      hospital.name,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.3,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      '${hospital.municipality}, ${hospital.province}',
                      style: TextStyle(color: Colors.grey[500], fontSize: 13.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
