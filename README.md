# MM-net EIP implementation
Enterprise Integration Pattern (EIP) demonstrator as multimedia CPN extension of CPNTools

## System Requirements

1. Windows 10 (due to the CPN Tools, sorry guys)
2. Working internet connection
3. JDK8 (eg, from [Oracle](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html?printOnly=1))
4. CPN Tools version 4 (eg, from [CPN Tools](http://cpntools.org/2018/01/16/download/))
5. PostgresSQL version 10 (eg, from [PostgresSQL](https://www.postgresql.org/download/))

## Simulating the patterns

1. Run the `mmnet.jar` to start the extension server (`java -jar mmnet.jar`); check the icon in the toolbar and double-click to check that the db-net extension is registered.
2. start the PostgresSQL database (eg, type Start PostgresSQL 10 in Win10 search field) and load database schema from the pattern folder, e.g., aggregator.sql (eg, using pgAdmin)
3. start the CPN Tools (eg, type CPN Tools in Win10 search field).
4. Load pattern model, e.g., `aggregator.cpn`, through right-click and `load model`.
5. (a window will open) enter your database credentials and host / port settings and connect to database (eg, localhost on port `5432` with user credentials).
![pic1](pictures/db-connector.png#center)
![pic2](pictures/db-connector-connected.png#center)

6. Right click on the `connect` artifact in the model and select `excecute ML` **OR** select ML in the CPN Toolbar and drag and drop there.
![pic3](pictures/connectDB-right-click.png#center)


7. Enter the port configured in the connect artifact into the extension GUI and connect CPN/COMM (default `9001`).
![pic4](pictures/comm-connected.png#center)
8. Start executing enabled transitions.
![pic5](pictures/fire-transition.png#center)

## License

Please note that the demonstrator is a CPN Tools extension, and thus uses the [Access/CPN](http://cpntools.org/2018/01/15/license-for-access-cpn/) module, which comes with a LGPL license. However, Access/CPN references the [CPN Tools Simulator](http://cpntools.org/2018/01/15/license-for-cpn-tools-simulator/) module, which is dual-licensed and can be used either under the GNU General Public License (GPL) version 2 or by the below license, which is a 4-clause BSD license.

## Citation

If you find this work useful for your research, please cite:
```
@inproceedings{DBLP:conf/edoc/MontaliR020,
  author    = {Marco Montali and
               Andrey Rivkin and
               Daniel Ritter},
  title     = {Formalizing Integration Patterns with Multimedia Data},
  booktitle = {24th {IEEE} International Enterprise Distributed Object Computing
               Conference, {EDOC} 2020, Eindhoven, The Netherlands, October 5-8,
               2020},
  pages     = {67--76},
  publisher = {{IEEE}},
  year      = {2020},
  url       = {https://doi.org/10.1109/EDOC49727.2020.00018},
  doi       = {10.1109/EDOC49727.2020.00018},
  timestamp = {Wed, 28 Oct 2020 15:31:59 +0100},
  biburl    = {https://dblp.org/rec/conf/edoc/MontaliR020.bib},
  bibsource = {dblp computer science bibliography, https://dblp.org}
}
```
for theoretical foundations, and / or the extended version (incl. detailed execution semantics):
```
@article{DBLP:journals/corr/abs-2009-04589,
  author    = {Marco Montali and
               Andrey Rivkin and
               Daniel Ritter},
  title     = {Formalizing Integration Patterns with Multimedia Data (Extended Version)},
  journal   = {CoRR},
  volume    = {abs/2009.04589},
  year      = {2020},
  url       = {https://arxiv.org/abs/2009.04589},
  archivePrefix = {arXiv},
  eprint    = {2009.04589},
  timestamp = {Thu, 17 Sep 2020 12:49:52 +0200},
  biburl    = {https://dblp.org/rec/journals/corr/abs-2009-04589.bib},
  bibsource = {dblp computer science bibliography, https://dblp.org}
}
```

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4BHCBCD9WRYS6&source=url)

or 

<a href="https://www.buymeacoffee.com/dritter" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
