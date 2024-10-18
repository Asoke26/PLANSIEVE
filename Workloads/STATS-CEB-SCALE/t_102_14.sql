SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 2
AND p.CommentCount <= 33
AND u.Reputation >= 31
AND u.DownVotes >= 19
AND u.DownVotes <= 31

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;