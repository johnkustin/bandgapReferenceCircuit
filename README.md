# ee272b
repository for a bandgap voltage reference in SKY130 technology

# prerequisites
it's assumed that you've installed ngspice, skywater-pdk, Xschem_sky130, and Xschem. if you're missing one of these, please follow the steps in [this video](https://xschem.sourceforge.io/stefan/xschem_man/video_tutorials/install_xschem_sky130_and_ngspice.mp4). the written documentation for Xschem is available [here](http://repo.hu/projects/xschem/xschem_man/xschem_man.html).  

**note:** Xschem_sky130 is different from the skywater-pdk but is **entirely necessary.** make sure you have it installed.  

## steps to set up the repository
1. enter bash and source `caddy.bashrc`

before you can do anything with this repository, you have to update some paths within some files.  
### updating paths  
2. in `project-paths.json` fill in the **absolute paths** for each of the entries. my paths are left in that file as an example.  
3. `python edit-xschemrc-paths.py`  

### testing the environment  
see if xschem opens without error. **important:** please launch xschem from this top directory. `xschemrc` must be in the current working directory, i.e. only launch `xschem` from the root of this repository.  
4. `xschem &`  
5. `File -> Open -> /path/to/repo/schematics/tsmc_bandgap_real.sch`  

## design blocks
the bandgap circuit is compact and the entire design schematic is contained in the following file  
`schematics/tsmc_bandgap_real.sch`  
**note:** you will need xscheme to open the above! if you just want to run the tests for this design, see the next section.

## running tests
`python run-tests.py`

### test descriptions
