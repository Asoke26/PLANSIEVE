SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 131
AND u.UpVotes >= 95
AND u.UpVotes <= 160
AND ph.CreationDate >= 795
AND ph.CreationDate <= 1001

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;