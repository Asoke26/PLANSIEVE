SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 33
AND u.Reputation <= 108
AND u.Views <= 783
AND v.CreationDate <= 735
AND u.CreationDate >= 151
AND u.CreationDate <= 545
AND b.Date <= 1120

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;