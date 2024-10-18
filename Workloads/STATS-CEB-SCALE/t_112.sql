SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.DownVotes<=0
AND u.UpVotes<=47
AND c.CreationDate<=1541

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;