SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 4
AND u.Reputation <= 44
AND u.Views <= 192
AND v.CreationDate <= 1282
AND u.CreationDate >= 232
AND u.CreationDate <= 828
AND b.Date <= 463

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;