SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.DownVotes <= 103
AND u.UpVotes <= 1547
AND c.CreationDate <= 124

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;