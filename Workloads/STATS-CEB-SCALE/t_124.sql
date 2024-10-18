SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId=1
AND u.Reputation<=126
AND u.Views<=11
AND v.CreationDate<=1543
AND u.CreationDate>=41
AND u.CreationDate<=1543
AND b.Date<=1534

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;