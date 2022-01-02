#Git status
function s() {
	git status
}

#Git log
function l(){
	git log
}

function lga(){
	git log --all --oneline --graph --date-order --max-count=15
}

function lg(){
	#git log --oneline --graph
	git log --graph --date-order -C -M --pretty=format:"<%h> %ad [%an] %Cgreen%d%Creset %s" --all --date=short --max-count=15

}

function la(){
	git log --oneline --all --max-count=10
}

function lp()
{
	git log -p
}


#Git branch
function b()
{
	git branch
}


function bc()
{
	git checkout -b $args
}

function c()
{
	git checkout $args 
}

