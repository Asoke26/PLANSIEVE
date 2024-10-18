SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 5
AND u.UpVotes >= 76
AND u.UpVotes <= 1316
AND ph.CreationDate >= 41
AND ph.CreationDate <= 275

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;