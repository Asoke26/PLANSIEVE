SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.Reputation>=1
AND u.Reputation<=1443
AND u.DownVotes>=0
AND u.DownVotes<=3
AND c.CreationDate<=1528
AND b.Date>=85

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;