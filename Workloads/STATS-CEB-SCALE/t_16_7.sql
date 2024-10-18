SELECT COUNT(*)
 FROM posts p,
tags t,
votes v
WHERE p.CreationDate >= 1327

AND p.Id = t.ExcerptPostId
AND p.OwnerUserId = v.UserId;