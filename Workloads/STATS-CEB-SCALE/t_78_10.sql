SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 2
AND p.Score <= 81
AND p.AnswerCount <= 28.0
AND p.FavoriteCount >= 68.0
AND u.Reputation <= 437
AND v.CreationDate >= 1093
AND b.Date <= 873

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;