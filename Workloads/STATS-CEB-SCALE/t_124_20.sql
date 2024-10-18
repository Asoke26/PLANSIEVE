SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 12
AND u.Reputation <= 212
AND u.Views <= 382
AND v.CreationDate <= 457
AND u.CreationDate >= 62
AND u.CreationDate <= 1251
AND b.Date <= 731

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;