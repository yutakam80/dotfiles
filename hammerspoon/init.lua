hs.window.animationDuration = 0
units = {
  right50       = { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
  left50        = { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
  top50         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
  bot50         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },
  righttop      = { x = 0.50, y = 0.00, w = 0.50, h = 0.50 },
  lefttop       = { x = 0.00, y = 0.00, w = 0.50, h = 0.50 },
  rightbot      = { x = 0.50, y = 0.50, w = 0.50, h = 0.50 },
  leftbot       = { x = 0.00, y = 0.50, w = 0.50, h = 0.50 },
  maximum       = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 }
}

hs.hotkey.bind({ 'alt', 'cmd' }, 'right', function() hs.window.focusedWindow():move(units.right50, nil, true) end)
hs.hotkey.bind({ 'alt', 'cmd' }, 'left', function() hs.window.focusedWindow():move(units.left50, nil, true) end)
hs.hotkey.bind({ 'alt', 'cmd' }, 'up', function() hs.window.focusedWindow():move(units.top50, nil, true) end)
hs.hotkey.bind({ 'alt', 'cmd' }, 'down', function() hs.window.focusedWindow():move(units.bot50, nil, true) end)
hs.hotkey.bind({ 'alt', 'cmd' }, 'f', function() hs.window.focusedWindow():move(units.maximum, nil, true) end)
hs.hotkey.bind({ 'shift', 'alt', 'cmd' }, 'up', function() hs.window.focusedWindow():move(units.righttop, nil, true) end)
hs.hotkey.bind({ 'shift', 'alt', 'cmd' }, 'left', function() hs.window.focusedWindow():move(units.lefttop, nil, true) end)
hs.hotkey.bind({ 'shift', 'alt', 'cmd' }, 'right', function() hs.window.focusedWindow():move(units.rightbot, nil, true) end)
hs.hotkey.bind({ 'shift', 'alt', 'cmd' }, 'down', function() hs.window.focusedWindow():move(units.leftbot, nil, true) end)
