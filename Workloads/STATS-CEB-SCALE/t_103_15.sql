SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 139
AND u.UpVotes >= 48
AND u.UpVotes <= 49
AND ph.CreationDate >= 145
AND ph.CreationDate <= 1082

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;