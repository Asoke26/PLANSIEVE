SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 9
AND p.Score >= 14
AND u.Reputation >= 116
AND u.UpVotes >= 220
AND u.UpVotes <= 2219

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;