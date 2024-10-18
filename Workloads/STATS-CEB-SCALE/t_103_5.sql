SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 110
AND u.UpVotes >= 81
AND u.UpVotes <= 240
AND ph.CreationDate >= 961
AND ph.CreationDate <= 1286

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;