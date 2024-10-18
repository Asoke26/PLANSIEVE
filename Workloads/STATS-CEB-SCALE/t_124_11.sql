SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 12
AND u.Reputation <= 176
AND u.Views <= 278
AND v.CreationDate <= 1144
AND u.CreationDate >= 770
AND u.CreationDate <= 1353
AND b.Date <= 1268

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;