SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 200
AND u.UpVotes >= 169
AND u.UpVotes <= 173
AND ph.CreationDate >= 767
AND ph.CreationDate <= 1080

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;