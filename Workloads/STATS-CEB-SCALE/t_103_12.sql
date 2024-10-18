SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 126
AND u.UpVotes >= 38
AND u.UpVotes <= 195
AND ph.CreationDate >= 1166
AND ph.CreationDate <= 1475

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;