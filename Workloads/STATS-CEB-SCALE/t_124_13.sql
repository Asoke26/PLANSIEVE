SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 33
AND u.Reputation <= 378
AND u.Views <= 40
AND v.CreationDate <= 1220
AND u.CreationDate >= 988
AND u.CreationDate <= 1100
AND b.Date <= 1142

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;