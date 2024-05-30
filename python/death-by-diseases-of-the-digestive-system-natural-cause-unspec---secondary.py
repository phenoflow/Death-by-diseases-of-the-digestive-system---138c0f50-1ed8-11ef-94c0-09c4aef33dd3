# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"K22.9","system":"icd10"},{"code":"K26.5","system":"icd10"},{"code":"K31.9","system":"icd10"},{"code":"K14.9","system":"icd10"},{"code":"K25.5","system":"icd10"},{"code":"K51.9","system":"icd10"},{"code":"K81.9","system":"icd10"},{"code":"K70.9","system":"icd10"},{"code":"K38.9","system":"icd10"},{"code":"K71.9","system":"icd10"},{"code":"K76.9","system":"icd10"},{"code":"K35.9","system":"icd10"},{"code":"K29.9","system":"icd10"},{"code":"K29.7","system":"icd10"},{"code":"K02.9","system":"icd10"},{"code":"K11.9","system":"icd10"},{"code":"K10.9","system":"icd10"},{"code":"K62.9","system":"icd10"},{"code":"K74.6","system":"icd10"},{"code":"K46.1","system":"icd10"},{"code":"K27","system":"icd10"},{"code":"K73.9","system":"icd10"},{"code":"K37.X","system":"icd10"},{"code":"K46","system":"icd10"},{"code":"K27.1","system":"icd10"},{"code":"K03.9","system":"icd10"},{"code":"K74.5","system":"icd10"},{"code":"K66.9","system":"icd10"},{"code":"K28.5","system":"icd10"},{"code":"K92.9","system":"icd10"},{"code":"K27.5","system":"icd10"},{"code":"K83.9","system":"icd10"},{"code":"K65.9","system":"icd10"},{"code":"K37","system":"icd10"},{"code":"K29.5","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-digestive-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-digestive-system-natural-cause-unspec---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-digestive-system-natural-cause-unspec---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-digestive-system-natural-cause-unspec---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
