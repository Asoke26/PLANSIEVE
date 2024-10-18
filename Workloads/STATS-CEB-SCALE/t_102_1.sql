SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 12
AND p.CommentCount <= 35
AND u.Reputation >= 1386
AND u.DownVotes >= 0
AND u.DownVotes <= 779

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;