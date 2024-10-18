SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 17
AND p.Score <= 94
AND p.AnswerCount <= 24.0
AND p.FavoriteCount >= 12.0
AND u.Reputation <= 915
AND v.CreationDate >= 856
AND b.Date <= 510

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;