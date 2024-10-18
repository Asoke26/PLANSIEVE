SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 5
AND u.UpVotes >= 111
AND u.UpVotes <= 463
AND ph.CreationDate >= 844
AND ph.CreationDate <= 1221

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;