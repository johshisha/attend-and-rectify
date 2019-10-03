init:
	docker build -t attend-and-rectify .

run:
	docker run --runtime=nvidia -v `pwd`/dataset:/work/dataset -t attend-and-rectify sh ./scripts/cifar/train_cifar10_warn.sh	
