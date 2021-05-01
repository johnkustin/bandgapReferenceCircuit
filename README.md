# stanford ee272b project - bandgap voltage reference in SKY130 technology
so you want to make a voltage reference. welcome.  
if y

# prerequisites
it's assumed that you've installed ngspice, skywater-pdk, Xschem_sky130, and Xschem. if you're missing one of these, please follow the steps in [this video](https://xschem.sourceforge.io/stefan/xschem_man/video_tutorials/install_xschem_sky130_and_ngspice.mp4). the written documentation for Xschem is available [here](http://repo.hu/projects/xschem/xschem_man/xschem_man.html).  

**note:** Xschem_sky130 is different from the skywater-pdk but is **entirely necessary.** make sure you have it installed.  

## steps to set up the repository
1. enter bash and source `caddy.bashrc` 
2. in `project-paths.json` fill in the **absolute paths** for each of the entries. my paths are left in that file as an example.  
3. `python edit-xschemrc-paths.py`  
4. `xschem &`. see if xschem opens without error. **important:** please launch xschem from this top directory. `xschemrc` must be in the current working directory, i.e. only launch `xschem` from the root of this repository.  
5. `File -> Open -> /path/to/repo/schematics/tsmc_bandgap_real.sch`  
hopefully, you can now see the full bandgap circuit schematic. try generating a netlist from this schematic; click `netlist` in the top right corner. to verify this worked, click the `simulation` tab in the top toolbar and then click `edit netlist`. a nano editor window should pop up, showing the various circuit components in the netlist.

## design blocks
the bandgap circuit is compact and the entire design schematic is contained in the following file  
`schematics/tsmc_bandgap_real.sch`  
**note:** you will need xscheme to open the above! if you just want to run the tests for this design, see the next section.

## running tests
`python run-tests.py`

### test descriptions
there are three tests so far
| test | description | path to relevant schematic |
| ---- | ----------- | -------------------------- |
| operating point | this simulation solves for a dc operating point for the circuit at 27 degrees celcius. the operating point represents the dc behavior in steady state | `sims/tsmc_bandgap_real_op.spice` |
| transient | this simulation is a time based simulation; the supply, VDD, is ramped up over 5 microseconds. a power on reset pulse is then applied. the circuit then settles into a desired operating point. this simulation performs the test at three temperatures: 0, 27, 70 degrees celcius. | `sims/tsmc_bandgap_real_tran.spice` |
| transient, with VDD and some process variation | this test varies VDD, threshold voltage (Vth), and oxide thickness (tox). each variation is according to a normally distributed Gaussian distribution. | `sims/tsmc_bandgap_real_tran_gauss.spice` |
| temperature sweep | this simulation solves for an initial operating point at temp = 0 degC and then does an incremental Newton Raphson to solve for the opearting points at successive temperatures. | `sims/tsmc_bandgap_real.spice` |
