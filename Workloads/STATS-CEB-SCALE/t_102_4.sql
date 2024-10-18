SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.CommentCount >= 5
AND p.CommentCount <= 45
AND u.Reputation >= 74
AND u.DownVotes >= 11
AND u.DownVotes <= 31

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;