SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 10
AND p.CommentCount <= 21
AND u.Reputation >= 391
AND u.DownVotes >= 24
AND u.DownVotes <= 54

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;