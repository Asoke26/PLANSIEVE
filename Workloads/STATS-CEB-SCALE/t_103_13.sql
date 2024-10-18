SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 18
AND u.UpVotes >= 174
AND u.UpVotes <= 2122
AND ph.CreationDate >= 114
AND ph.CreationDate <= 1160

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;