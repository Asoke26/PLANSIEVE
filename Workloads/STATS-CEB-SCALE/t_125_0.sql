SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.Views >= 122

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;