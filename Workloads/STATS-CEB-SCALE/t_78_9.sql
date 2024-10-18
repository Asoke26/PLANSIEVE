SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 14
AND p.Score <= 79
AND p.AnswerCount <= 56.0
AND p.FavoriteCount >= 3.0
AND u.Reputation <= 2768
AND v.CreationDate >= 857
AND b.Date <= 1091

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;