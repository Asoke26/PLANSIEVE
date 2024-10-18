SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 27
AND p.CommentCount <= 29
AND u.Reputation >= 37083
AND u.DownVotes >= 37
AND u.DownVotes <= 200

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;