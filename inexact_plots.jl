# Julia 0.2 RC1
# Created: 29.10.13
# Last Edit: 31.10.13

using PyPlot

close("all") # Close all currently open figures

#################
#  Create Data  #
#################
x = [1:1:100]
y = ones(100)
for i=70:1:100
	y[i] = y[i] - (0.7/30)*(i-70)
end

##############
#  XKCD Plot #
##############
xkcd() # Set to XKCD mode, based on the comic (hand drawn)
fig = figure(figsize=(10,10))
ax = axes()
p = plot(x,y)
ax[:set_ylim]([0.2,1.1])
annotate("THE DAY I REALIZED\nI COULD COOK BACON\nWHENEVER I WANTED",xy=[70,1],arrowprops=["arrowstyle"=>"->"],xytext=[25,0.8])

xticks([])
yticks([])
xlabel("TIME")
ylabel("MY OVERALL HEALTH")
title("Stove Owndership\nhttp://xkcd.com/418/")

ax[:spines]["top"][:set_color]("none") # Remove the top axis boundary
ax[:spines]["right"][:set_color]("none") # Remove the right axis boundary
fig[:canvas][:draw]() # Update the figure
