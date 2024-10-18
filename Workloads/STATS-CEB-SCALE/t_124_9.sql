SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 2
AND u.Reputation <= 310
AND u.Views <= 120
AND v.CreationDate <= 1363
AND u.CreationDate >= 730
AND u.CreationDate <= 1507
AND b.Date <= 1085

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;