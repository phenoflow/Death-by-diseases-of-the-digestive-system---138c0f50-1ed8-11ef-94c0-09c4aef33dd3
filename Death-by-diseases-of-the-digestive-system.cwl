cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  hepatic-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: hepatic-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  apical-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: apical-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: hepatic-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-unspec---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: apical-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-intest---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-intest---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-unspec---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-supporting---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-supporting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-intest---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-pancreatitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-pancreatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-supporting---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-duodenitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-duodenitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-pancreatitis---secondary/output
  haemorrhagic-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: haemorrhagic-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-duodenitis---secondary/output
  abdominal-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: abdominal-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: haemorrhagic-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  persistent-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: persistent-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: abdominal-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  divertic-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: divertic-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: persistent-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  infectious-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: infectious-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: divertic-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-inflammatory---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-inflammatory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: infectious-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-gland---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-gland---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-inflammatory---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-absce---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-absce---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-gland---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-failure---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-failure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-absce---secondary/output
  gastrointestinal-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: gastrointestinal-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-failure---secondary/output
  central-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: central-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: gastrointestinal-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-mucosa---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-mucosa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: central-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  ulcerative-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: ulcerative-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-mucosa---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-tissue---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-tissue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ulcerative-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-cholecystitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-cholecystitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-tissue---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-fibrosis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-fibrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-cholecystitis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-galbladder---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-galbladder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-fibrosis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-tract---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-tract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-galbladder---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-tongue---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-tongue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-tract---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-oesophagu---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-oesophagu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-tongue---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-appendix---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-appendix---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-oesophagu---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-enteritis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-enteritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-appendix---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-related---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-related---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-enteritis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-proctitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-proctitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-related---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-classified---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-proctitis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-impacted---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-impacted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-classified---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-obstruct---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-obstruct---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-impacted---secondary/output
  large-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: large-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-obstruct---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-specified---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: large-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  developmental-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: developmental-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-specified---secondary/output
  unilateral-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: unilateral-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: developmental-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-appendicitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-appendicitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: unilateral-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  diaphragmatic-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: diaphragmatic-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-appendicitis---secondary/output
  fatty-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: fatty-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: diaphragmatic-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  dental-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: dental-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: fatty-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-including---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-including---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: dental-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-hepatitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-hepatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-including---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-cholangitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-cholangitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-hepatitis---secondary/output
  anorectal-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: anorectal-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-cholangitis---secondary/output
  active-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: active-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: anorectal-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-necrosis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-necrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: active-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-liver---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-liver---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-necrosis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-atrophy---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-atrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-liver---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-radiation---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-radiation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-atrophy---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-stenosis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-stenosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-radiation---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-hyperplasia---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-hyperplasia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-stenosis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-peritonitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-peritonitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-hyperplasia---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-peritonitis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-papillae---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-papillae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-colon---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-colon---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-papillae---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-gingivitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-gingivitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-colon---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-rectum---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-rectum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-gingivitis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-hypertrophy---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-hypertrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-rectum---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-sclerosis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-sclerosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-hypertrophy---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-peritoneum---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-peritoneum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-sclerosis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-gingival---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-gingival---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-peritoneum---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-cholelithiasis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-cholelithiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-gingival---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-disturbance---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-disturbance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-cholelithiasis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-prolapse---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-prolapse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-disturbance---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-glossitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-glossitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-prolapse---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-spasm---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-spasm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-glossitis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-formation---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-formation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-spasm---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-dyspepsia---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-dyspepsia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-formation---secondary/output
  umbilical-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: umbilical-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-dyspepsia---secondary/output
  irritable-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: irritable-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: umbilical-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  toxic-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: toxic-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: irritable-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-polyp---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-polyp---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: toxic-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-calculus---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-calculus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-polyp---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-oesophagitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-oesophagitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-calculus---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-lesion---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-lesion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-oesophagitis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-leukoplakia---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-leukoplakia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-lesion---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-duodenum---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-duodenum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-leukoplakia---secondary/output
  lobular-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: lobular-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-duodenum---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-abnormality---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-abnormality---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: lobular-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  regional-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: regional-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-abnormality---secondary/output
  tuberculous-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: tuberculous-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: regional-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  chronic-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: chronic-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: tuberculous-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-diarrhoea---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-diarrhoea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: chronic-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-reflux---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-reflux---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-diarrhoea---secondary/output
  small-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: small-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-reflux---secondary/output
  alcoholic-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: alcoholic-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: small-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-periodontitis---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-periodontitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: alcoholic-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  peritoneal-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: peritoneal-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-periodontitis---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-inguin---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-inguin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: peritoneal-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  gastrojejunal-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: gastrojejunal-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-inguin---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-granuloma---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-granuloma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: gastrojejunal-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-relationship---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-relationship---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-granuloma---secondary/output
  femoral-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: femoral-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-relationship---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-fistula---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-fistula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: femoral-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  system---secondary:
    run: system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-fistula---secondary/output
  portal-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: portal-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: system---secondary/output
  death-by-diseases-of-the-digestive-system-natural-cause-surgery---secondary:
    run: death-by-diseases-of-the-digestive-system-natural-cause-surgery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: portal-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
  gastrooesophageal-death-by-diseases-of-the-digestive-system-natural-cause---secondary:
    run: gastrooesophageal-death-by-diseases-of-the-digestive-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-digestive-system-natural-cause-surgery---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: gastrooesophageal-death-by-diseases-of-the-digestive-system-natural-cause---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
