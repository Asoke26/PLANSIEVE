SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.DownVotes <= 110
AND u.UpVotes <= 123
AND c.CreationDate <= 109

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;