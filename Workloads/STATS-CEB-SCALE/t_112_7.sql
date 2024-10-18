SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.DownVotes <= 22
AND u.UpVotes <= 3481
AND c.CreationDate <= 196

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;