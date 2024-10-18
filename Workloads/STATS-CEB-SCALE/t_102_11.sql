SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.CommentCount >= 10
AND p.CommentCount <= 23
AND u.Reputation >= 966
AND u.DownVotes >= 22
AND u.DownVotes <= 47

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;