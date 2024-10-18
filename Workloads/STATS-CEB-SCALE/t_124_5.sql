SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 34
AND u.Reputation <= 1645
AND u.Views <= 881
AND v.CreationDate <= 1059
AND u.CreationDate >= 177
AND u.CreationDate <= 1235
AND b.Date <= 907

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;