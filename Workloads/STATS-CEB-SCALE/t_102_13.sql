SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.CommentCount >= 3
AND p.CommentCount <= 10
AND u.Reputation >= 1796
AND u.DownVotes >= 9
AND u.DownVotes <= 145

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;