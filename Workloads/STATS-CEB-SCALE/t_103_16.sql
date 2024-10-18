SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 212
AND u.UpVotes >= 107
AND u.UpVotes <= 582
AND ph.CreationDate >= 94
AND ph.CreationDate <= 403

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;