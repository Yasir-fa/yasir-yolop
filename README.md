# yasir-yolop


## Usage

#### Step 1. Install Docker.
  &nbsp;&nbsp;&nbsp; For Windows: https://docs.docker.com/desktop/windows/install/ \
  &nbsp;&nbsp;&nbsp; For Linux:   https://docs.docker.com/desktop/linux/install/ \
  &nbsp;&nbsp;&nbsp; For Mac:     https://docs.docker.com/desktop/mac/install/
  
#### Step 2. Clone repository.
```shell
git clone https://github.com/Yasir-fa/yasir-yolop
cd yasir-yolop
```

#### Step 3. Image building.
```shell
docker build --tag yolop .
```

#### Step 4. Run container.
```shell
docker run -it yolop bash
```
Now you have access to the terminal in the docker container and you can execute any bash commands.


#### Step 5. Load images to the container. (Open other terminal)
```shell
docker ps -a
```
Copy CONTAINER ID from output and paste instead of \<CONTAINER ID\> in the next command.
```shell
docker cp ./images <CONTAINER ID>:/yolop/YOLOP/inference
```
On Windows you need to use a backslash \ instead of a slash /.

#### Step 6. Apply the YOLOP algorithm to the loaded images. (In terminal with docker container running)
```shell
python tools/demo.py --source inference/images
```

#### Step 7. Let's see the result. (Open other terminal)
```shell
docker cp <CONTAINER ID>:/yolop/YOLOP/inference .
```

Now on your computer in the current folder there is a folder 'inference' that contains folders 'images' and 'output'.
The 'images' contains the original photos. The 'output' contains the processed photos.

## Visualization

<table>
    <tr>
            <th>input</th>
            <th>output</th>
    </tr>
    <tr>
        <td><img src=images/input7.jpg /></td>
        <td><img src=output/output7.jpg/></td>
    </tr>
    <tr>
         <td><img src=images/input9.jpg /></td>
        <td><img src=output/output9.jpg/></td>
    </tr>
      <tr>
         <td><img src=images/input10.jpeg /></td>
        <td><img src=output/output10.jpeg/></td>
    </tr>
      <tr>
         <td><img src=images/input11.jpeg /></td>
        <td><img src=output/output11.jpeg/></td>
    </tr>
      <tr>
         <td><img src=images/input12.jpeg /></td>
        <td><img src=output/output12.jpeg/></td>
    </tr>
      <tr>
         <td><img src=images/input2.jpg /></td>
        <td><img src=output/output2.jpg/></td>
    </tr>
      <tr>
         <td><img src=images/input3.jpg /></td>
        <td><img src=output/output3.jpg/></td>
    </tr>
      <tr>
         <td><img src=images/input5.jpg /></td>
        <td><img src=output/output5.jpg/></td>
    </tr>
</table>

## More information

You can read [`detailed guide`](GD.pdf)
