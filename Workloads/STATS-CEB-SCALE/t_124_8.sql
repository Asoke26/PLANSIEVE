SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 4
AND u.Reputation <= 39
AND u.Views <= 28
AND v.CreationDate <= 1249
AND u.CreationDate >= 277
AND u.CreationDate <= 442
AND b.Date <= 690

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;