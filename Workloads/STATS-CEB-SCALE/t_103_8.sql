SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 7
AND u.UpVotes >= 58
AND u.UpVotes <= 60
AND ph.CreationDate >= 829
AND ph.CreationDate <= 1181

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;