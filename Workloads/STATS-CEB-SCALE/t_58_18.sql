SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount >= 9.0
AND p.FavoriteCount >= 0.0
AND pl.LinkTypeId = 1
AND ph.PostHistoryTypeId = 7
AND u.Reputation >= 1994

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;