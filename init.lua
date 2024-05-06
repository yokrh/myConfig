hs.loadSpoon("ShiftIt")
spoon.ShiftIt:bindHotkeys({
  left = { { 'option', 'cmd' }, 'left' },
  down = { { 'option', 'cmd' }, 'down' },
  up = { { 'option', 'cmd' }, 'up' },
  right = { { 'option', 'cmd' }, 'right' },
  maximum = { { 'option', 'cmd' }, 'f' },
})
spoon.ShiftIt:setWindowCyclingSizes({ 50, 33, 20, 80, 67 }, { 50 })
