SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 19
AND p.Score <= 122
AND p.AnswerCount <= 42.0
AND p.FavoriteCount >= 17.0
AND u.Reputation <= 950
AND v.CreationDate >= 43
AND b.Date <= 1110

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;