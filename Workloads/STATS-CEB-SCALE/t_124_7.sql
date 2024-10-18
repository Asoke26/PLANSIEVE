SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 3
AND u.Reputation <= 252
AND u.Views <= 5554
AND v.CreationDate <= 1376
AND u.CreationDate >= 173
AND u.CreationDate <= 1074
AND b.Date <= 556

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;