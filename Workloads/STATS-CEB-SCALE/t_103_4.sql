SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 126
AND u.UpVotes >= 37
AND u.UpVotes <= 70
AND ph.CreationDate >= 313
AND ph.CreationDate <= 758

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;