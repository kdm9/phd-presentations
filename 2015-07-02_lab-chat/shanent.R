x = 1:100
freq = x / 100
shanent = (freq * -log2(freq) + ((1-freq) * -log2(1-freq)))
pdf('img/shanent.pdf', width=5, height=5)
plot(x, shanent, xlab='% Presence', ylab='H(x)', type='l')
dev.off()
