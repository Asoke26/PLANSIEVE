SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 6
AND p.Score <= 43
AND p.AnswerCount <= 13.0
AND p.FavoriteCount >= 13.0
AND u.Reputation <= 879
AND v.CreationDate >= 876
AND b.Date <= 1058

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;